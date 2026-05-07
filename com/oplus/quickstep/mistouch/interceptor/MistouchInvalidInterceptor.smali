.class public final Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

.field private static final INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->Companion:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor$Companion;

    new-instance v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    invoke-direct {v0}, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;->INSTANCE:Lcom/oplus/quickstep/mistouch/interceptor/MistouchInvalidInterceptor;

    return-object v0
.end method


# virtual methods
.method public destory()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->destory(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;)V

    return-void
.end method

.method public forceShowToast()V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->forceShowToast(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;)V

    return-void
.end method

.method public interceptDownEvent(FF)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public interceptMoveEvent()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onGestureEnded(Lcom/android/quickstep/GestureState$GestureEndTarget;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->onGestureEnded(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;Lcom/android/quickstep/GestureState$GestureEndTarget;)V

    return-void
.end method

.method public reset(Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor$DefaultImpls;->reset(Lcom/oplus/quickstep/mistouch/interceptor/IMistouchInterceptor;Z)V

    return-void
.end method
