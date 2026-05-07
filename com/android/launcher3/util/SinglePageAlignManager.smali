.class public final Lcom/android/launcher3/util/SinglePageAlignManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/SinglePageAlignManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/util/SinglePageAlignManager$Companion;

.field private static final TOAST_INVALID_DURATION:I = 0xfa0

.field private static oldMsgId:I

.field private static sInstance:Lcom/android/launcher3/util/SinglePageAlignManager;

.field private static time:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/SinglePageAlignManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SinglePageAlignManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/util/SinglePageAlignManager;->Companion:Lcom/android/launcher3/util/SinglePageAlignManager$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/util/SinglePageAlignManager;-><init>()V

    return-void
.end method

.method public static synthetic a(ZLandroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/util/SinglePageAlignManager;->animateToAlign$lambda-2$lambda-1(ZLandroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getOldMsgId$cp()I
    .registers 1

    sget v0, Lcom/android/launcher3/util/SinglePageAlignManager;->oldMsgId:I

    return v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/launcher3/util/SinglePageAlignManager;
    .registers 1

    sget-object v0, Lcom/android/launcher3/util/SinglePageAlignManager;->sInstance:Lcom/android/launcher3/util/SinglePageAlignManager;

    return-object v0
.end method

.method public static final synthetic access$getTime$cp()J
    .registers 2

    sget-wide v0, Lcom/android/launcher3/util/SinglePageAlignManager;->time:J

    return-wide v0
.end method

.method public static final synthetic access$setOldMsgId$cp(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/util/SinglePageAlignManager;->oldMsgId:I

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/launcher3/util/SinglePageAlignManager;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/util/SinglePageAlignManager;->sInstance:Lcom/android/launcher3/util/SinglePageAlignManager;

    return-void
.end method

.method public static final synthetic access$setTime$cp(J)V
    .registers 2

    sput-wide p0, Lcom/android/launcher3/util/SinglePageAlignManager;->time:J

    return-void
.end method

.method private static final animateToAlign$lambda-2$lambda-1(ZLandroid/view/View;)V
    .registers 5

    instance-of v0, p1, Lcom/android/launcher3/OplusCellLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/launcher3/OplusCellLayout;

    goto :goto_9

    :cond_8
    move-object p1, v1

    :goto_9
    if-nez p1, :cond_c

    goto :goto_14

    :cond_c
    invoke-virtual {p1, p0}, Lcom/android/launcher3/OplusCellLayout;->findFirstEmptyCell(Z)[I

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/android/launcher3/OplusCellLayout;->fillUpEmptyCell([I[IZZ)V

    :goto_14
    return-void
.end method


# virtual methods
.method public final animateToAlign(ZLcom/android/launcher3/OplusWorkspace;)V
    .registers 5

    const-string/jumbo v0, "workspace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_7
    new-instance v0, Lcom/android/launcher/l;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/l;-><init>(ZI)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/PagedView;->forEachVisiblePage(Ljava/util/function/Consumer;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method
