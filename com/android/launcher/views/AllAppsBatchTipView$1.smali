.class Lcom/android/launcher/views/AllAppsBatchTipView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/views/AllAppsBatchTipView;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/views/AllAppsBatchTipView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/views/AllAppsBatchTipView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView$1;->this$0:Lcom/android/launcher/views/AllAppsBatchTipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1  # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0083

    if-eq p1, v0, :cond_25

    const v0, 0x7f0a05af

    if-eq p1, v0, :cond_f

    goto :goto_3a

    :cond_f
    iget-object p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView$1;->this$0:Lcom/android/launcher/views/AllAppsBatchTipView;

    iget-object p1, p1, Lcom/android/launcher/views/AllAppsBatchTipView;->mButtonClickCallBack:Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;

    if-eqz p1, :cond_3a

    sget-object p1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {p1}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p0, p0, Lcom/android/launcher/views/AllAppsBatchTipView$1;->this$0:Lcom/android/launcher/views/AllAppsBatchTipView;

    iget-object p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mButtonClickCallBack:Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;

    invoke-interface {p1, p0}, Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;->onUninstallButtonClick(Lcom/android/launcher/views/CommonAlertView;)V

    goto :goto_3a

    :cond_25
    iget-object p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView$1;->this$0:Lcom/android/launcher/views/AllAppsBatchTipView;

    iget-object p1, p1, Lcom/android/launcher/views/AllAppsBatchTipView;->mButtonClickCallBack:Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;

    if-eqz p1, :cond_3a

    sget-object p1, Lcom/android/common/util/ClickUtils;->INSTANCE:Lcom/android/common/util/ClickUtils;

    invoke-virtual {p1}, Lcom/android/common/util/ClickUtils;->shortClickable()Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p0, p0, Lcom/android/launcher/views/AllAppsBatchTipView$1;->this$0:Lcom/android/launcher/views/AllAppsBatchTipView;

    iget-object p1, p0, Lcom/android/launcher/views/AllAppsBatchTipView;->mButtonClickCallBack:Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;

    invoke-interface {p1, p0}, Lcom/android/launcher/views/AllAppsBatchTipView$ButtonClickCallBack;->onAddButtonClick(Lcom/android/launcher/views/CommonAlertView;)V

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return p0
.end method
