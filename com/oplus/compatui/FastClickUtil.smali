.class public Lcom/oplus/compatui/FastClickUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FAST_CLICK_THRESHOLD:I = 0x1f4

.field private static sLastClickTime:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFastClick()Z
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/oplus/compatui/FastClickUtil;->sLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    sput-wide v0, Lcom/oplus/compatui/FastClickUtil;->sLastClickTime:J

    const/4 v0, 0x0

    return v0
.end method
