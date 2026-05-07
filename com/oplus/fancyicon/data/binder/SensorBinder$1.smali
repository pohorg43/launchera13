.class Lcom/oplus/fancyicon/data/binder/SensorBinder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/data/binder/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/data/binder/SensorBinder;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/binder/SensorBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/SensorBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v1

    if-ge v0, v2, :cond_17

    aget v1, v1, v0

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/SensorBinder;

    invoke-static {v2, v0}, Lcom/oplus/fancyicon/data/binder/SensorBinder;->a(Lcom/oplus/fancyicon/data/binder/SensorBinder;I)Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;

    move-result-object v2

    if-eqz v2, :cond_14

    float-to-double v3, v1

    invoke-virtual {v2, v3, v4}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->setDoubleValue(D)V

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/SensorBinder;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/ScreenElementRoot;->requestRender()V

    return-void
.end method
