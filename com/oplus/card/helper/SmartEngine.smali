.class public abstract Lcom/oplus/card/helper/SmartEngine;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/SmartEngine$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/helper/SmartEngine$Companion;

.field public static final SPLIT:Ljava/lang/String; = "&"

.field public static final UPDATE_MODE_US_METIS:I = 0x2


# instance fields
.field private callback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;"
        }
    .end annotation
.end field

.field private final cardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

.field private cardName:Ljava/lang/String;

.field private exposeDuration:J

.field private exposeStartTime:J

.field private onVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/helper/SmartEngine$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/helper/SmartEngine$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/helper/SmartEngine;->Companion:Lcom/oplus/card/helper/SmartEngine$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardInfo;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/LauncherCardInfo;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/SmartEngine;->cardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    iput-object p2, p0, Lcom/oplus/card/helper/SmartEngine;->callback:Lkotlin/jvm/functions/Function2;

    const-string p2, ""

    iput-object p2, p0, Lcom/oplus/card/helper/SmartEngine;->cardName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/card/helper/SmartEngine;->exposeStartTime:J

    invoke-virtual {p0, p1}, Lcom/oplus/card/helper/SmartEngine;->createCardName(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/card/helper/SmartEngine;->cardName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addFailRetryProxy()V
    .registers 1

    return-void
.end method

.method public final beginRecordExposeTime()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/card/helper/SmartEngine;->exposeStartTime:J

    return-void
.end method

.method public createCardName(Lcom/android/launcher3/card/LauncherCardInfo;)Ljava/lang/String;
    .registers 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_a

    move-object v1, v0

    goto :goto_10

    :cond_a
    iget v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_10
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1c

    move-object v2, v0

    goto :goto_22

    :cond_1c
    iget v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_22
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2b

    goto :goto_31

    :cond_2b
    iget p1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mHostId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_31
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final endRecordExposeTime()V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/card/helper/SmartEngine;->exposeStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/card/helper/SmartEngine;->exposeDuration:J

    return-void
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function2;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/card/helper/SmartEngine;->callback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public getCardCache()Ljava/lang/Object;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCardInfo()Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/SmartEngine;->cardInfo:Lcom/android/launcher3/card/LauncherCardInfo;

    return-object p0
.end method

.method public final getCardName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/SmartEngine;->cardName:Ljava/lang/String;

    return-object p0
.end method

.method public getCardScreenshot()Landroid/graphics/Bitmap;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExposeDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/card/helper/SmartEngine;->exposeDuration:J

    return-wide v0
.end method

.method public final getExposeStartTime()J
    .registers 3

    iget-wide v0, p0, Lcom/oplus/card/helper/SmartEngine;->exposeStartTime:J

    return-wide v0
.end method

.method public final getOnVisible()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/card/helper/SmartEngine;->onVisible:Z

    return p0
.end method

.method public interceptResume()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isCardCached()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isErrorCode(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public isNormalCardEngine()Z
    .registers 1

    instance-of p0, p0, Lcom/oplus/card/helper/NormalSmartEngine;

    return p0
.end method

.method public isQuickCardEngine()Z
    .registers 1

    instance-of p0, p0, Lcom/oplus/card/helper/QuickAppSmartEngine;

    return p0
.end method

.method public isSeedCardEngine()Z
    .registers 1

    instance-of p0, p0, Lcom/android/launcher3/card/seed/SeedCardEngine;

    return p0
.end method

.method public isVisible()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public obtainView(Landroid/view/View;Lcom/oplus/card/manager/domain/model/UIData;)V
    .registers 3

    const-string p0, "uiData"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public obtainView([B)V
    .registers 2

    return-void
.end method

.method public onInVisible(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onVisible(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public releaseView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public removeFailRetryProxy()V
    .registers 1

    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Ly2/p;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/helper/SmartEngine;->callback:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setCardName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/card/helper/SmartEngine;->cardName:Ljava/lang/String;

    return-void
.end method

.method public setCardVisibleRect(Landroid/graphics/Rect;)V
    .registers 2

    const-string p0, "rect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final setExposeDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/card/helper/SmartEngine;->exposeDuration:J

    return-void
.end method

.method public final setExposeStartTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/oplus/card/helper/SmartEngine;->exposeStartTime:J

    return-void
.end method

.method public final setOnVisible(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/card/helper/SmartEngine;->onVisible:Z

    return-void
.end method

.method public updateView(Ljava/lang/String;I)V
    .registers 3

    const-string p0, "newData"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
