.class final synthetic Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const-class v2, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    const/4 v1, 0x1

    const-string v3, "<init>"

    const-string v4, "<init>(Landroid/content/Context;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;)Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;
    .registers 3

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$INSTANCE$1;->invoke(Landroid/content/Context;)Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    move-result-object p0

    return-object p0
.end method
