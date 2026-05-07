.class Lcom/android/launcher3/allapps/OplusFloatingHeaderView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->addOnGlobalLayoutListenerForHeightChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusFloatingHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    iget v1, v0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->updateExpectedHeight()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    iget v2, v0, Lcom/android/launcher3/allapps/FloatingHeaderView;->mMaxTranslation:I

    if-eq v1, v2, :cond_2f

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->access$000(Lcom/android/launcher3/allapps/OplusFloatingHeaderView;)Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusFloatingHeaderView$1;->this$0:Lcom/android/launcher3/allapps/OplusFloatingHeaderView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusFloatingHeaderView;->access$000(Lcom/android/launcher3/allapps/OplusFloatingHeaderView;)Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/launcher3/allapps/OplusFloatingHeaderView$GlobalLayoutAndMaxTranslationChange;->onGlobalLayoutAndMaxTranslationChange()V

    goto :goto_2f

    :cond_27
    const-string p0, "OplusFloatingHeaderView"

    const-string/jumbo v0, "updateExpectedHeight listener is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    :goto_2f
    return-void
.end method
