.class final Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/uscard/USCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "USDragListener"
.end annotation


# instance fields
.field private final dragEndRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "dragEndRunnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;->dragEndRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final getDragEndRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;->dragEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public onDragEnd()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardManager$USDragListener;->dragEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 3

    const-string p0, "USCardManager"

    const-string p1, "USDragListener, onDragStart"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
