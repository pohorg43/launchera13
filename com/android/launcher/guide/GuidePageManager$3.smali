.class Lcom/android/launcher/guide/GuidePageManager$3;
.super Lcom/coui/appcompat/panel/COUIGuideBehavior$COUIBottomSheetCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/guide/GuidePageManager;->initView(Lcom/android/launcher/guide/GuidePageManager$Page;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/guide/GuidePageManager;

.field public final synthetic val$whichPage:Lcom/android/launcher/guide/GuidePageManager$Page;


# direct methods
.method public constructor <init>(Lcom/android/launcher/guide/GuidePageManager;Lcom/android/launcher/guide/GuidePageManager$Page;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    iput-object p2, p0, Lcom/android/launcher/guide/GuidePageManager$3;->val$whichPage:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIGuideBehavior$COUIBottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 5
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x2

    const v0, 0x7f0603d3

    if-eq p2, p1, :cond_8d

    const/4 p1, 0x3

    const-string v1, "GuidePageManager"

    if-eq p2, p1, :cond_58

    const/4 p1, 0x4

    if-eq p2, p1, :cond_3b

    const/4 p1, 0x5

    if-eq p2, p1, :cond_13

    goto/16 :goto_a4

    :cond_13
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$200(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p2}, Lcom/android/launcher/guide/GuidePageManager;->access$100(Lcom/android/launcher/guide/GuidePageManager;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$300(Lcom/android/launcher/guide/GuidePageManager;)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePrefUtils;->changeNavigationColor(Lcom/android/launcher/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$400(Lcom/android/launcher/guide/GuidePageManager;)V

    const-string p0, " case COUIGuideBehavior.STATE_HIDDEN"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_3b
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    const-string p0, " case COUIGuideBehavior.STATE_COLLAPSED"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_58
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p2, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p2}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/Window;->setNavigationBarColor(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    iget-object p2, p0, Lcom/android/launcher/guide/GuidePageManager$3;->val$whichPage:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-static {p1, p2}, Lcom/android/launcher/guide/GuidePageManager;->access$502(Lcom/android/launcher/guide/GuidePageManager;Lcom/android/launcher/guide/GuidePageManager$Page;)Lcom/android/launcher/guide/GuidePageManager$Page;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " case COUIGuideBehavior.STATE_EXPANDED, whichPage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$3;->val$whichPage:Lcom/android/launcher/guide/GuidePageManager$Page;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_8d
    iget-object p1, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p1}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/guide/GuidePageManager$3;->this$0:Lcom/android/launcher/guide/GuidePageManager;

    invoke-static {p0}, Lcom/android/launcher/guide/GuidePageManager;->access$000(Lcom/android/launcher/guide/GuidePageManager;)Lcom/android/launcher/Launcher;

    move-result-object p0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_a4
    return-void
.end method
