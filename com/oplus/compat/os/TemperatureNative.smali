.class public Lcom/oplus/compat/os/TemperatureNative;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/os/TemperatureNative;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/compat/os/TemperatureNative;->mValue:F

    return-void
.end method


# virtual methods
.method public getmName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/compat/os/TemperatureNative;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getmValue()F
    .registers 1

    iget p0, p0, Lcom/oplus/compat/os/TemperatureNative;->mValue:F

    return p0
.end method

.method public setmName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/os/TemperatureNative;->mName:Ljava/lang/String;

    return-void
.end method

.method public setmValue(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/compat/os/TemperatureNative;->mValue:F

    return-void
.end method
