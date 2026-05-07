.class Lcom/android/launcher3/allapps/OplusAllAppsContainerView$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->onFinishInflate()V
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

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$2;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$300(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V

    return-void
.end method
