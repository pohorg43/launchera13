.class Lcom/android/launcher3/card/CardViewPreLoader$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CardViewPreLoader;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/card/CardViewPreLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/CardViewPreLoader;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/CardViewPreLoader$1;->this$0:Lcom/android/launcher3/card/CardViewPreLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/card/CardViewPreLoader$1;->this$0:Lcom/android/launcher3/card/CardViewPreLoader;

    invoke-static {v0}, Lcom/android/launcher3/card/CardViewPreLoader;->access$000(Lcom/android/launcher3/card/CardViewPreLoader;)Lcom/android/launcher3/card/PendingAddCardInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/PendingAddCardInfo;->getCardConfigInfo()Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object v0

    sget-object v1, Lcom/oplus/card/util/ConfigInfoCoverUtil;->INSTANCE:Lcom/oplus/card/util/ConfigInfoCoverUtil;

    iget-object v2, p0, Lcom/android/launcher3/card/CardViewPreLoader$1;->this$0:Lcom/android/launcher3/card/CardViewPreLoader;

    invoke-static {v2}, Lcom/android/launcher3/card/CardViewPreLoader;->access$100(Lcom/android/launcher3/card/CardViewPreLoader;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getLoadingIcon()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/oplus/card/util/ConfigInfoCoverUtil;->getRemoteVectorDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object p0, p0, Lcom/android/launcher3/card/CardViewPreLoader$1;->this$0:Lcom/android/launcher3/card/CardViewPreLoader;

    invoke-static {p0}, Lcom/android/launcher3/card/CardViewPreLoader;->access$000(Lcom/android/launcher3/card/CardViewPreLoader;)Lcom/android/launcher3/card/PendingAddCardInfo;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/card/PendingAddCardInfo;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    return-void
.end method
