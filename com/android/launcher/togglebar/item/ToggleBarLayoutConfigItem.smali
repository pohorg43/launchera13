.class public final Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;
.super Lcom/android/launcher/togglebar/item/ToggleBarItem;
.source ""


# instance fields
.field private mColumn:I

.field private mRow:I

.field private mSelected:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/togglebar/item/ToggleBarItem;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMColumn()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->mColumn:I

    return p0
.end method

.method public final getMRow()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->mRow:I

    return p0
.end method

.method public final getMSelected()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->mSelected:Z

    return p0
.end method

.method public final setMColumn(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->mColumn:I

    return-void
.end method

.method public final setMRow(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->mRow:I

    return-void
.end method

.method public final setMSelected(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/togglebar/item/ToggleBarLayoutConfigItem;->mSelected:Z

    return-void
.end method
