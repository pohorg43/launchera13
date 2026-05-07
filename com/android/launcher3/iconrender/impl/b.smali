.class public final synthetic Lcom/android/launcher3/iconrender/impl/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;F)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/iconrender/impl/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;FI)V
    .registers 5

    iput p4, p0, Lcom/android/launcher3/iconrender/impl/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Ljava/lang/Object;

    iput p3, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/b;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_22

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->a(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V

    return-void

    :pswitch_14  #0x0
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->b(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V

    return-void

    :goto_22
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->e(Lcom/android/launcher/download/DownloadAppsManager;Ljava/lang/String;F)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
