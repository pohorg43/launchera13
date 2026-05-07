.class Lcom/android/launcher/widget/AppWidgetListenHelper$1;
.super Landroid/util/Singleton;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/widget/AppWidgetListenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/android/launcher/widget/AppWidgetListenHelper;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/android/launcher/widget/AppWidgetListenHelper;
    .registers 2

    new-instance p0, Lcom/android/launcher/widget/AppWidgetListenHelper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/widget/AppWidgetListenHelper;-><init>(Lcom/android/launcher/widget/AppWidgetListenHelper$1;)V

    return-object p0
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/widget/AppWidgetListenHelper$1;->create()Lcom/android/launcher/widget/AppWidgetListenHelper;

    move-result-object p0

    return-object p0
.end method
