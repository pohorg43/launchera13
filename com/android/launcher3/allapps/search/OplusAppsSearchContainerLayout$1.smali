.class Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->showBranchSearchGuide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

.field public final synthetic val$tipsWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;Landroid/widget/PopupWindow;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;->val$tipsWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    invoke-static {p1}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->access$000(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    invoke-static {v0}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->access$000(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$1;->val$tipsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
