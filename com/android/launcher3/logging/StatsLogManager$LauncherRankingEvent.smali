.class public final enum Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$EventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logging/StatsLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LauncherRankingEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;",
        ">;",
        "Lcom/android/launcher3/logging/StatsLogManager$EventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

.field public static final enum UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->UNKNOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;
    .registers 2

    const-class v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;
    .registers 1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->$VALUES:[Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    invoke-virtual {v0}, [Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherRankingEvent;->mId:I

    return p0
.end method
