.class public Lcom/oplus/fancyicon/data/binder/SensorBinder;
.super Lcom/oplus/fancyicon/data/binder/VariableBinder;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;
    }
.end annotation


# static fields
.field private static final DEFAULT_DELAY:I = 0x3040

.field private static final LOG_TAG:Ljava/lang/String; = "SensorBinder"

.field private static final SENSOR_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SENSOR_TYPE_5:I = 0x5

.field public static final TAG_NAME:Ljava/lang/String; = "SensorBinder"

.field private static sSensorManager:Landroid/hardware/SensorManager;


# instance fields
.field private mRate:I

.field private mRegistered:Z

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mType:Ljava/lang/String;

.field private mVariables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const-class v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_53

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TYPE_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    const/4 v5, 0x5

    :try_start_20
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/oplus/fancyicon/data/binder/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_38} :catch_39

    goto :goto_50

    :catch_39
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SensorBinder"

    invoke-static {v4, v3}, Lcom/oplus/fancyicon/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    :goto_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_53
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinder;-><init>(Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mVariables:Landroid/util/SparseArray;

    const-string p2, "type"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mType:Ljava/lang/String;

    const-string p2, "rate"

    const/16 v0, 0x3040

    invoke-static {p1, p2, v0}, Lcom/oplus/fancyicon/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mRate:I

    sget-object p2, Lcom/oplus/fancyicon/data/binder/SensorBinder;->sSensorManager:Landroid/hardware/SensorManager;

    if-nez p2, :cond_30

    iget-object p2, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {p2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "sensor"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    sput-object p2, Lcom/oplus/fancyicon/data/binder/SensorBinder;->sSensorManager:Landroid/hardware/SensorManager;

    :cond_30
    sget-object p2, Lcom/oplus/fancyicon/data/binder/SensorBinder;->sSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mType:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/fancyicon/data/binder/SensorBinder;->getSensorType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-nez p2, :cond_55

    const-string p1, "Fail to get sensor! TYPE: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SensorBinder"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :cond_55
    new-instance p2, Lcom/oplus/fancyicon/data/binder/SensorBinder$1;

    invoke-direct {p2, p0}, Lcom/oplus/fancyicon/data/binder/SensorBinder$1;-><init>(Lcom/oplus/fancyicon/data/binder/SensorBinder;)V

    iput-object p2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/SensorBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    :goto_5f
    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/data/binder/SensorBinder;I)Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/fancyicon/data/binder/SensorBinder;->getVariable(I)Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;

    move-result-object p0

    return-object p0
.end method

.method private getSensorType(Ljava/lang/String;)I
    .registers 2

    sget-object p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->SENSOR_TYPES:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_10
    return p0
.end method

.method private getVariable(I)Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;
    .registers 2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mVariables:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;

    return-object p0
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    const-string v0, "Variable"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    :goto_7
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_28

    new-instance v1, Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v3, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v3}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mVariables:Landroid/util/SparseArray;

    iget v3, v1, Lcom/oplus/fancyicon/data/binder/SensorBinder$SensorVariable;->mIndex:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_28
    return-void
.end method

.method private registerListener()V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mRegistered:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/oplus/fancyicon/data/binder/SensorBinder;->sSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget v3, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mRate:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mRegistered:Z

    :cond_14
    return-void
.end method

.method private unregisterListener()V
    .registers 4

    iget-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mRegistered:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_12

    sget-object v1, Lcom/oplus/fancyicon/data/binder/SensorBinder;->sSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/fancyicon/data/binder/SensorBinder;->mRegistered:Z

    :cond_12
    return-void
.end method


# virtual methods
.method public pause()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->pause()V

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/SensorBinder;->unregisterListener()V

    return-void
.end method

.method public resume()V
    .registers 1

    invoke-super {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder;->resume()V

    invoke-direct {p0}, Lcom/oplus/fancyicon/data/binder/SensorBinder;->registerListener()V

    return-void
.end method
