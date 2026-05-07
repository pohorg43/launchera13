.class public interface abstract Lcom/android/launcher3/iconrender/IRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/touch/ITouchProcessor;


# virtual methods
.method public abstract beforeTextViewOnMeasure(Lcom/android/launcher3/BubbleTextView;II)V
.end method

.method public onBindApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 2

    return-void
.end method

.method public onBindWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 3

    return-void
.end method

.method public abstract onTextAppearanceChanged(I)V
.end method

.method public abstract onViewReset(Lcom/android/launcher3/BubbleTextView;)V
.end method

.method public onViewSelectStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public abstract priority()I
.end method
