.class public final synthetic Lcom/android/launcher/badge/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

.field public final synthetic c:Lcom/android/launcher3/util/PackageUserKey;

.field public final synthetic d:Lcom/android/launcher3/notification/NotificationKeyData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;I)V
    .registers 5

    iput p4, p0, Lcom/android/launcher/badge/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/h;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iput-object p2, p0, Lcom/android/launcher/badge/h;->c:Lcom/android/launcher3/util/PackageUserKey;

    iput-object p3, p0, Lcom/android/launcher/badge/h;->d:Lcom/android/launcher3/notification/NotificationKeyData;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/badge/h;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/badge/h;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iget-object v1, p0, Lcom/android/launcher/badge/h;->c:Lcom/android/launcher3/util/PackageUserKey;

    iget-object p0, p0, Lcom/android/launcher/badge/h;->d:Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->l(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher/badge/h;->b:Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    iget-object v1, p0, Lcom/android/launcher/badge/h;->c:Lcom/android/launcher3/util/PackageUserKey;

    iget-object p0, p0, Lcom/android/launcher/badge/h;->d:Lcom/android/launcher3/notification/NotificationKeyData;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->i(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
