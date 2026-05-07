.class public Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;
.super Lcom/android/launcher/togglebar/item/ToggleBarItem;
.source ""


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mSelected:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public isSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->mSelected:Z

    return p0
.end method

.method public setClassName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarEffectItem;->mSelected:Z

    return-void
.end method
