.class Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->initColorPopListWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initColorPopListWindow onItemClick view = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "position = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusAllAppsContainerView"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    if-nez p3, :cond_40

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isAppRankDisabled()Z

    move-result p1

    if-nez p1, :cond_40

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->createDrawSortOptionDialog()V

    goto :goto_63

    :cond_40
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$400(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_5e

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result p1

    if-eqz p1, :cond_5e

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/BaseDraggingActivity;

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->gotoDrawerSetting(Lcom/android/launcher3/BaseDraggingActivity;)V

    goto :goto_63

    :cond_5e
    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$4;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->drawManagerChooseClick()V

    :goto_63
    return-void
.end method
