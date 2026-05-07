.class public final Lcom/android/launcher3/card/theme/data/ResultCode$InvalidSize;
.super Lcom/android/launcher3/card/theme/data/ResultCode;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/theme/data/ResultCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidSize"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 10

    const-string/jumbo v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/card/theme/data/ResultCode;-><init>(ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, -0x1

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/ResultCode$InvalidSize;-><init>(Ljava/lang/String;I)V

    return-void
.end method
