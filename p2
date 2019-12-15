public class SelfWritingProgram {
	private static int newlines = 0;
	private static String src = "public class SelfWritingProgram {\n\tprivate static int newlines = 0;\n\tprivate static String[] out = new String[100];\n\n\tpublic static void main(String[] args) {\n\t\tinitialiseOut();\n\t\tfor(char c : src.toCharArray()) {\n\t\t\twriteChar(c);\n\t\t}\n\t\tfinishOut();\n\t\tprint();\n\t}\n\n\tprivate static void print(){\n\t\tfor(String s : out) System.out.println(s);\n\t}\n\n\tprivate static void initialiseOut(){\n\t\tfor(int i = 0; i < out.length; i++) {\n\t\t\tout[i] = new String();\n\t\t}\n\t\tout[2] += \"\\tprivate static String src = \\\"\";\n\t}\n\n\tprivate static void finishOut() {\n\t\tout[2] += \"\\\";\\n\";\t\t\n\t}\n\n\tprivate static void writeChar(char c){\n\n\t\tif (c == '\\n') {\n\t\t\tout[2] += \"\\\\n\";\n\t\t} else if (c == '\\t') {\n\t\t\tout[2] += \"\\\\t\";\n\t\t} else {\n\t\t\tout[2] += c;\n\t\t}\n\t\t\n\t\tif(c == '\\n') {\n\t\t\tnewlines++;\n\t\t\treturn;\n\t\t}\n\n\t\tint index = newlines > 1 ? newlines + 1 : newlines;\n\t\t\n\t\tout[index] += c;\n\t}\n}";

	private static String[] out = new String[100];

	public static void main(String[] args) {
		initialiseOut();
		for(char c : src.toCharArray()) {
			writeChar(c);
		}
		finishOut();
		print();
	}

	private static void print(){
		for(String s : out) System.out.println(s);
	}

	private static void initialiseOut(){
		for(int i = 0; i < out.length; i++) {
			out[i] = new String();
		}
		out[2] += "\tprivate static String src = \"";
	}

	private static void finishOut() {
		out[2] += "\";\n";		
	}

	private static void writeChar(char c){

		if (c == '\n') {
			out[2] += "\\n";
		} else if (c == '\t') {
			out[2] += "\\t";
		} else {
			out[2] += c;
		}
		
		if(c == '\n') {
			newlines++;
			return;
		}

		int index = newlines > 1 ? newlines + 1 : newlines;
		
		out[index] += c;
	}
}
