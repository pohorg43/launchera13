.class public final synthetic Lcom/android/launcher3/taskbar/i0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/TaskbarDragController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/taskbar/i0;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/i0;->b:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher3/taskbar/i0;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0, 0x1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/i0;->b:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
    .end packed-switch
.end method
