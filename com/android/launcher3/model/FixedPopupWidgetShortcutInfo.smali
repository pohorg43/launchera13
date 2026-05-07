.class public Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedPopupWidgetShortcutInfo"


# instance fields
.field private mHostComponent:Landroid/content/ComponentName;

.field private mIntent:Landroid/content/Intent;

.field private mStyleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHostComponent()Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mHostComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getStyleId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mStyleId:Ljava/lang/String;

    return-object p0
.end method

.method public setHostComponent(Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mHostComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setStyleId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mStyleId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "FixedPopupWidgetShortcutInfo{mStyleId=\'"

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mStyleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHostComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/model/FixedPopupWidgetShortcutInfo;->mHostComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
