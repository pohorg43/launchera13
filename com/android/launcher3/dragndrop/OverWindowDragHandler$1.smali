.class Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/OverWindowDragHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;->this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;->this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->access$000(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;->this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->access$100(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;->this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->access$200(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;->this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->access$300(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;->this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->access$300(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Lcom/android/launcher3/dragndrop/DragCardInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragCardInfo;->getCardType()I

    move-result v2

    const v3, 0xd3ecf26

    if-ne v2, v3, :cond_40

    const v1, 0x7f1205e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_51

    :cond_40
    const v2, 0x7f100003

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_51
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/OverWindowDragHandler$1;->this$0:Lcom/android/launcher3/dragndrop/OverWindowDragHandler;

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/OverWindowDragHandler;->access$200(Lcom/android/launcher3/dragndrop/OverWindowDragHandler;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/widget/Toast;

    :cond_5a
    return-void
.end method
