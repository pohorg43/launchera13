.class public abstract Lcom/android/launcher3/appedit/AppCustomizerManager$CustomBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppCustomizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CustomBroadcastReceiver"
.end annotation


# instance fields
.field private isRegister:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRegister()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$CustomBroadcastReceiver;->isRegister:Z

    return p0
.end method

.method public final setRegister(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/appedit/AppCustomizerManager$CustomBroadcastReceiver;->isRegister:Z

    return-void
.end method
