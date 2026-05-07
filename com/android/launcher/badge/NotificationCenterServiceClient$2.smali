.class Lcom/android/launcher/badge/NotificationCenterServiceClient$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/badge/NotificationCenterServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;


# direct methods
.method public constructor <init>(Lcom/android/launcher/badge/NotificationCenterServiceClient;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/badge/NotificationCenterServiceClient$2;->this$0:Lcom/android/launcher/badge/NotificationCenterServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    return-void
.end method
