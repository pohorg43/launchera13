.class Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/ota/OpOtaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OTARunnable"
.end annotation


# instance fields
.field private mTime:I

.field public final synthetic this$0:Lcom/android/launcher3/ota/OpOtaManager;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/ota/OpOtaManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;->this$0:Lcom/android/launcher3/ota/OpOtaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/ota/OpOtaManager;Lcom/android/launcher3/ota/OpOtaManager$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;-><init>(Lcom/android/launcher3/ota/OpOtaManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;->this$0:Lcom/android/launcher3/ota/OpOtaManager;

    iget p0, p0, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;->mTime:I

    invoke-static {v0, p0}, Lcom/android/launcher3/ota/OpOtaManager;->access$100(Lcom/android/launcher3/ota/OpOtaManager;I)V

    return-void
.end method

.method public setTime(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/ota/OpOtaManager$OTARunnable;->mTime:I

    return-void
.end method
