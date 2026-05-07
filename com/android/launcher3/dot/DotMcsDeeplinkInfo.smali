.class public final Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dot/DotMcsDeeplinkInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dot/DotMcsDeeplinkInfo$Companion;

.field public static final INTENT_EXTRA_MCS_DP_PKG_NAME:Ljava/lang/String; = "mcs_deeplink_pkgName"

.field public static final INTENT_EXTRA_MCS_DP_USER_ID:Ljava/lang/String; = "mcs_deeplink_userId"

.field public static final INTENT_EXTRA_WINDOW_DEEPLINK_CALLING_PACKAGE:Ljava/lang/String; = "deepLinkCallingPackage"

.field public static final INTENT_EXTRA_WINDOW_IS_STARTED_FROM_DEEPLINK:Ljava/lang/String; = "isStartedFromDeeplink"

.field private static final RESULT_CODE:I = 0x1f


# instance fields
.field private final actionParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deeplink:Landroid/net/Uri;

.field private final msgExtra:Ljava/lang/String;

.field private final msgId:Ljava/lang/String;

.field private final outdatedTime:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->Companion:Lcom/android/launcher3/dot/DotMcsDeeplinkInfo$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "deeplink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msgId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "msgExtra"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->actionParams:Ljava/util/Map;

    iput-wide p5, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;JILjava/lang/Object;)Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->actionParams:Ljava/util/Map;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-wide p5, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    :cond_21
    move-wide v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-wide p7, v2

    invoke-virtual/range {p2 .. p8}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->copy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->actionParams:Ljava/util/Map;

    return-object p0
.end method

.method public final component5()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    return-wide v0
.end method

.method public final copy(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;"
        }
    .end annotation

    const-string p0, "deeplink"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "msgId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "msgExtra"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;J)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const-class v1, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    if-nez p1, :cond_a

    const/4 v2, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_e
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    return v2

    :cond_16
    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.dot.DotMcsDeeplinkInfo"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;

    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    return v2

    :cond_34
    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v2

    :cond_3f
    iget-wide v3, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    iget-wide p0, p1, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_48

    return v2

    :cond_48
    return v0
.end method

.method public final getActionParams()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->actionParams:Ljava/util/Map;

    return-object p0
.end method

.method public final getDeeplink()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    return-object p0
.end method

.method public final getMsgExtra()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    return-object p0
.end method

.method public final getMsgId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public final getOutdatedTime()J
    .registers 3

    iget-wide v0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-wide v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "DotMcsDeeplinkInfo(deeplink="

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->deeplink:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", msgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msgExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->msgExtra:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->actionParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outdatedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher3/dot/DotMcsDeeplinkInfo;->outdatedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
