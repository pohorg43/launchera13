.class public final Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;
.super Lcom/oplus/quickstep/utils/SingletonHolderWithParam;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "INSTANCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/utils/SingletonHolderWithParam<",
        "Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/SingletonHolderWithParam;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;-><init>()V

    return-void
.end method
