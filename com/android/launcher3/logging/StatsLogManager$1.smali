.class Lcom/android/launcher3/logging/StatsLogManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/logging/StatsLogManager;->createLogger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/logging/StatsLogManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/logging/StatsLogManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/logging/StatsLogManager$1;->this$0:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
