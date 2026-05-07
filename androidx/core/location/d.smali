.class public final synthetic Landroidx/core/location/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/location/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/d;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/core/location/d;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;I)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/location/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/d;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/core/location/d;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/location/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/location/d;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/core/location/d;->c:Ljava/lang/Object;

    iput p3, p0, Landroidx/core/location/d;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Landroidx/core/location/d;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_22

    :pswitch_6  #0x1
    iget-object v0, p0, Landroidx/core/location/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;

    iget-object v1, p0, Landroidx/core/location/d;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/core/location/LocationListenerCompat;

    iget p0, p0, Landroidx/core/location/d;->d:I

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;->h(Landroidx/core/location/LocationManagerCompat$LocationListenerTransport;Landroidx/core/location/LocationListenerCompat;I)V

    return-void

    :pswitch_14  #0x0
    iget-object v0, p0, Landroidx/core/location/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;

    iget-object v1, p0, Landroidx/core/location/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget p0, p0, Landroidx/core/location/d;->d:I

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;->a(Landroidx/core/location/LocationManagerCompat$GpsStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :goto_22
    iget-object v0, p0, Landroidx/core/location/d;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;

    iget-object v1, p0, Landroidx/core/location/d;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/Executor;

    iget p0, p0, Landroidx/core/location/d;->d:I

    invoke-static {v0, v1, p0}, Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;->c(Landroidx/core/location/LocationManagerCompat$PreRGnssStatusTransport;Ljava/util/concurrent/Executor;I)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
