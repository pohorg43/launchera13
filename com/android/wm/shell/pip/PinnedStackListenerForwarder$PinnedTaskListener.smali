.class public Lcom/android/wm/shell/pip/PinnedStackListenerForwarder$PinnedTaskListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PinnedStackListenerForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PinnedTaskListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityHidden(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .registers 3

    return-void
.end method

.method public onMovementBoundsChanged(Z)V
    .registers 2

    return-void
.end method
