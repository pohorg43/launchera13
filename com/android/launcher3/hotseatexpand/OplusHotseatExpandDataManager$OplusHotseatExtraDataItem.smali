.class public final Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OplusHotseatExtraDataItem"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private clickIntentKey:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private startType:Ljava/lang/String;

.field private subIconUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->iconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->subIconUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->clickIntentKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->startType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final getClickIntentKey()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->clickIntentKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->iconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public final getStartType()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->startType:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubIconUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->subIconUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final setClickIntentKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->clickIntentKey:Ljava/lang/String;

    return-void
.end method

.method public final setIconUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->intent:Landroid/content/Intent;

    return-void
.end method

.method public final setStartType(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->startType:Ljava/lang/String;

    return-void
.end method

.method public final setSubIconUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->subIconUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[iconUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subIconUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->subIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clickIntentKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->clickIntentKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager$OplusHotseatExtraDataItem;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
