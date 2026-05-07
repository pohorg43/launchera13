.class public interface abstract Lcom/android/launcher3/ILauncherExt;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract addKeyboardShortcut(Ljava/util/List;Landroid/content/Context;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/view/KeyboardShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract closeAllOpenViewsOnStateSetStart(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/LauncherState;ZZ)V
.end method

.method public abstract closeOpenViewsInStartBinding(Lcom/android/launcher3/views/ActivityContext;ZZ)V
.end method

.method public abstract closeOpenViewsInonSaveInstanceState(Lcom/android/launcher3/views/ActivityContext;ZZLandroid/os/Bundle;)V
.end method

.method public abstract onIdpChangeBeforeOnSaveInstance(Landroid/os/Bundle;)V
.end method

.method public abstract skipOnKeyShortcut()Z
.end method
