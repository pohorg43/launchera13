.class public interface abstract Lcom/oplus/quickstep/dock/DockContract$Dock;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dock/DockContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Dock"
.end annotation


# virtual methods
.method public abstract calculateLocation(Landroid/graphics/Rect;II)V
.end method

.method public abstract onMultiWindowModeChanged(Z)V
.end method

.method public abstract scrollDock(II)V
.end method
