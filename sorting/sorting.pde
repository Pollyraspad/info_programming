int[] array = new int[30];
int i = 0;
void setup() {
    size(700, 700);
    for (int i = 0; i < array.length; i++) {
        array[i] = (int) random(30);
    }
    frameRate(4);
}
void draw() {
    background(0);
    for (int j = 0; j < array.length; j++) {
        if (array[i] > array[j]) {
            int temp = array[j];
            array[j] = array[i];
            array[i] = temp;
        }

        fill(255, 174, 201);
        rect(height / array.length * j, 10, height / array.length, 100 + 5 * array[j]);
    }
    i++;

    if (i > array.length - 1) {
        noLoop();
    }
}