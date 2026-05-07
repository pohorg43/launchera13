.class public final Lcom/android/common/util/VRRServiceHelper$INSTANCE;
.super Lcom/oplus/quickstep/utils/SingletonHolder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/VRRServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "INSTANCE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/quickstep/utils/SingletonHolder<",
        "Lcom/android/common/util/VRRServiceHelper;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    sget-object v0, Lcom/android/common/util/VRRServiceHelper$INSTANCE$1;->INSTANCE:Lcom/android/common/util/VRRServiceHelper$INSTANCE$1;

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/SingletonHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/util/VRRServiceHelper$INSTANCE;-><init>()V

    return-void
.end method
