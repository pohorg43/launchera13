.class Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;Lcom/android/launcher3/search/SearchAlgorithm;Lcom/coui/appcompat/searchview/COUISearchView;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/search/SearchCallback;Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    invoke-static {p1}, Lcom/android/common/util/GenericUtils;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "afterTextChanged mQuery = "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object v1, v1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " s= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OplusAllAppsSearchBarController"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object p1, p1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object p1, p1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {p0}, Lcom/android/launcher3/search/SearchCallback;->clearSearchResult()V

    goto :goto_59

    :cond_47
    iget-object p1, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object p1, p1, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    invoke-interface {p1, v0}, Lcom/android/launcher3/search/SearchAlgorithm;->cancel(Z)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController$1;->this$0:Lcom/android/launcher3/allapps/search/OplusAllAppsSearchBarController;

    iget-object p1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/AllAppsSearchBarController;->mCallback:Lcom/android/launcher3/search/SearchCallback;

    invoke-interface {p1, v1, p0}, Lcom/android/launcher3/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/search/SearchCallback;)V

    :goto_59
    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
