.class public final synthetic Lcom/android/launcher3/taskbar/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnDragListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public final synthetic b:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/s;->a:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/s;->b:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/s;->a:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/s;->b:Lcom/android/launcher3/BubbleTextView;

    invoke-static {v0, p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->e(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method
