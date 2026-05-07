.class public final synthetic Landroidx/core/location/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/location/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/location/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/location/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Landroidx/core/location/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Landroidx/core/location/e;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_36

    :pswitch_6  #0x2
    iget-object v0, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/core/location/LocationListenerCompat;

    iget-object p0, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/location/Location;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->e(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Landroid/location/Location;)V

    return-void

    :pswitch_16  #0x1
    iget-object v0, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/core/location/LocationListenerCompat;

    iget-object p0, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->a(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;Ljava/util/List;)V

    return-void

    :pswitch_26  #0x0
    iget-object v0, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/core/location/GnssStatusCompat;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->b(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;Landroidx/core/location/GnssStatusCompat;)V

    return-void

    :goto_36
    iget-object v0, p0, Landroidx/core/location/e;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v1, p0, Landroidx/core/location/e;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/core/location/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/location/GnssStatus;

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->b(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;Landroid/location/GnssStatus;)V

    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_16  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
