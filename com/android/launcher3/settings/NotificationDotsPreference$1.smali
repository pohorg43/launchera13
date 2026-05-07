.class Lcom/android/launcher3/settings/NotificationDotsPreference$1;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/settings/NotificationDotsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/settings/NotificationDotsPreference;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/settings/NotificationDotsPreference;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;->this$0:Lcom/android/launcher3/settings/NotificationDotsPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/settings/NotificationDotsPreference$1;->this$0:Lcom/android/launcher3/settings/NotificationDotsPreference;

    invoke-static {p0}, Lcom/android/launcher3/settings/NotificationDotsPreference;->access$000(Lcom/android/launcher3/settings/NotificationDotsPreference;)V

    return-void
.end method
