.class public interface abstract Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/data/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FolderListener"
.end annotation


# virtual methods
.method public abstract onAdd(Lcom/android/launcher3/model/data/WorkspaceItemInfo;I)V
.end method

.method public abstract onItemsChanged(Z)V
.end method

.method public abstract onRecommendContentChanged()V
.end method

.method public abstract onRemove(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation
.end method
