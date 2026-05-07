.class public Lcom/android/launcher/locateaction/LocateEvent;
.super Lcom/oplus/quickstep/events/EventBus$Event;
.source ""


# instance fields
.field private mMessage:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/quickstep/events/EventBus$Event;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/locateaction/LocateEvent;->mMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher/locateaction/LocateEvent;->mMethod:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/locateaction/LocateEvent;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/locateaction/LocateEvent;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/locateaction/LocateEvent;->mMessage:Ljava/lang/String;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/locateaction/LocateEvent;->mMethod:Ljava/lang/String;

    return-void
.end method
