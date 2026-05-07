.class Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->playAutoTouchUpAnimIfNecessary(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "RecommendFolderSwitchPanelView"

    const-string/jumbo p1, "onAnimationCancel"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    const-string/jumbo p1, "onAnimationEnd mAutoAnimEndValue:"

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    invoke-static {v0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->access$100(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecommendFolderSwitchPanelView"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    invoke-static {p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->access$100(Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;)F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2b

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$2;->this$0:Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_2b
    return-void
.end method
