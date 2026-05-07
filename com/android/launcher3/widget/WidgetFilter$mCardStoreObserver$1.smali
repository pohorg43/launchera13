.class public final Lcom/android/launcher3/widget/WidgetFilter$mCardStoreObserver$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/WidgetFilter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/widget/WidgetFilter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/widget/WidgetFilter;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetFilter$mCardStoreObserver$1;->this$0:Lcom/android/launcher3/widget/WidgetFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/WidgetFilter;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetFilter$mCardStoreObserver$1;->onChange$lambda-0(Lcom/android/launcher3/widget/WidgetFilter;)V

    return-void
.end method

.method private static final onChange$lambda-0(Lcom/android/launcher3/widget/WidgetFilter;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetFilter;->access$fetchCardStoreWidgets(Lcom/android/launcher3/widget/WidgetFilter;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4

    const-string p1, "WidgetFilter"

    const-string p2, "Card store widgets data change"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p0, p0, Lcom/android/launcher3/widget/WidgetFilter$mCardStoreObserver$1;->this$0:Lcom/android/launcher3/widget/WidgetFilter;

    new-instance p2, Lcom/android/launcher3/widget/f;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/launcher3/widget/f;-><init>(Lcom/android/launcher3/widget/WidgetFilter;I)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
