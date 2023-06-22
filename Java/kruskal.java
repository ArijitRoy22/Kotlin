// Write a program to implement Kruskal’s
// algorithm using the Greedy method. Your function must take a
// weighted graph as input and compute the MST of the graph.
// Anirban Paul
// 08/06/2023
import java.util.*;

class kruskal {
    // Class to represent a kruskal edge
    class Edge implements Comparable<Edge> {
        int src, dest, weight;

        public int compareTo(Edge compareEdge) {
            return this.weight - compareEdge.weight;
        }
    };

    int V, E;
    Edge[] edges;

    // Constructor
    kruskal(int v, int e) {
        V = v;
        E = e;
        edges = new Edge[E];
        for (int i = 0; i < e; ++i)
            edges[i] = new Edge();
    }

    // Function to find the MST using Kruskal's algorithm
    void kruskalMST() {
        // Sort all the edges in non-decreasing order of their weight
        Arrays.sort(edges);

        // Initialize result
        Edge[] result = new Edge[V];
        int[] parent = new int[V];

        // Create V subsets with single elements
        for (int i = 0; i < V; ++i)
            parent[i] = i;

        int e = 0;
        int i = 0;

        // Keep adding edges to the MST until V-1 edges are added
        while (e < V - 1) {
            Edge nextEdge = edges[i++];

            int x = find(parent, nextEdge.src);
            int y = find(parent, nextEdge.dest);

            // If including this edge doesn't form a cycle, add it to the MST
            if (x != y) {
                result[e++] = nextEdge;
                union(parent, x, y);
            }
        }

        // Print the MST
        System.out.println("Minimum Spanning Tree:");
        for (i = 0; i < e; ++i)
            System.out.println(result[i].src + " - " + result[i].dest + " : " + result[i].weight);
    }

    // Find set of an element i
    int find(int[] parent, int i) {
        if (parent[i] != i)
            parent[i] = find(parent, parent[i]);
        return parent[i];
    }

    // Union of two sets
    void union(int[] parent, int x, int y) {
        int xroot = find(parent, x);
        int yroot = find(parent, y);
        parent[xroot] = yroot;
    }

    // Driver code
    public static void main(String[] args) {
        int V = 4; // Number of vertices
        int E = 5; // Number of edges
        kruskal kruskal = new kruskal(V, E);

        // Add edges
        kruskal.edges[0].src = 0;
        kruskal.edges[0].dest = 1;
        kruskal.edges[0].weight = 10;

        kruskal.edges[1].src = 0;
        kruskal.edges[1].dest = 2;
        kruskal.edges[1].weight = 6;

        kruskal.edges[2].src = 0;
        kruskal.edges[2].dest = 3;
        kruskal.edges[2].weight = 5;

        kruskal.edges[3].src = 1;
        kruskal.edges[3].dest = 3;
        kruskal.edges[3].weight = 15;

        kruskal.edges[4].src = 2;
        kruskal.edges[4].dest = 3;
        kruskal.edges[4].weight = 4;

        kruskal.kruskalMST();
    }
}