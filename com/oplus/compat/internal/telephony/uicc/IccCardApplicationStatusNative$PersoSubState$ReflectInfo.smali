.class Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReflectInfo"
.end annotation


# static fields
.field private static getState:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPersoSubStateConstructor:Lcom/oplus/utils/reflect/RefConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-class v0, Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;

    const-string v1, "com.android.internal.telephony.uicc.IccCardApplicationStatus.PersoSubState"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/oplus/utils/reflect/RefConstructor;
    .registers 1

    sget-object v0, Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->mPersoSubStateConstructor:Lcom/oplus/utils/reflect/RefConstructor;

    return-object v0
.end method

.method public static synthetic access$100()Lcom/oplus/utils/reflect/RefMethod;
    .registers 1

    sget-object v0, Lcom/oplus/compat/internal/telephony/uicc/IccCardApplicationStatusNative$PersoSubState$ReflectInfo;->getState:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
