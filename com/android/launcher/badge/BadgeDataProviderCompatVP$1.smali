.class Lcom/android/launcher/badge/BadgeDataProviderCompatVP$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->onNotificationFullRefresh(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

.field public final synthetic val$activeNotifications:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/List;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$1;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iput-object p2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$1;->val$activeNotifications:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$1;->this$0:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$1;->val$activeNotifications:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->access$000(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/List;)V

    return-void
.end method
