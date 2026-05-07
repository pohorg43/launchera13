.class Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->showBranchSearchMarketTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

.field public final synthetic val$searchMarketIntent:Landroid/content/Intent;

.field public final synthetic val$tipsWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;Landroid/content/Intent;Landroid/widget/PopupWindow;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;->this$0:Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    iput-object p2, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;->val$searchMarketIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;->val$tipsWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;->this$0:Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;

    invoke-static {p1}, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;->access$000(Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;->val$searchMarketIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAppsSearchContainerLayout$2;->val$tipsWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
