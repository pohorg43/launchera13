.class public final synthetic Lcom/android/wm/shell/draganddrop/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/b;->a:Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/b;->a:Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;

    invoke-static {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;->b(Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropImpl;)V

    return-void
.end method
