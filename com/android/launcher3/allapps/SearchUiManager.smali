.class public interface abstract Lcom/android/launcher3/allapps/SearchUiManager;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public getBackgroundVisibility()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getEditText()Lcom/android/launcher3/ExtendedEditText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public getQuery()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method public abstract initializeSearch(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)V"
        }
    .end annotation
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public refreshResults()V
    .registers 1

    return-void
.end method

.method public abstract resetSearch()V
.end method

.method public setBackgroundVisibility(ZF)V
    .registers 3

    return-void
.end method

.method public setFocusedResultTitle(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public updateQueryUi()V
    .registers 1

    return-void
.end method
