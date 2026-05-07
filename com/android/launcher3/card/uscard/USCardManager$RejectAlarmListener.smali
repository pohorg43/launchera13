.class final Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/uscard/USCardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RejectAlarmListener"
.end annotation


# instance fields
.field private final cellLayout:Lcom/android/launcher3/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .registers 3

    const-string v0, "cellLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;->cellLayout:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;->onAlarm$lambda-0(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V

    return-void
.end method

.method private static final onAlarm$lambda-0(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p0}, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->useRecommendList(Lcom/android/launcher3/CellLayout;)V

    return-void
.end method


# virtual methods
.method public final getCellLayout()Lcom/android/launcher3/CellLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;->cellLayout:Lcom/android/launcher3/CellLayout;

    return-object p0
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 3

    sget-object p1, Lcom/android/launcher3/card/uscard/USCardManager;->INSTANCE:Lcom/android/launcher3/card/uscard/USCardManager;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/launcher3/card/uscard/USCardManager;->access$setMRejectAlarmListener$p(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/card/uscard/e;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/uscard/e;-><init>(Lcom/android/launcher3/card/uscard/USCardManager$RejectAlarmListener;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
