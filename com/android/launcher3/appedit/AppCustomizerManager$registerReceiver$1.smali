.class final Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appedit/AppCustomizerManager;->registerReceiver$default(Lcom/android/launcher3/appedit/AppCustomizerManager;Landroid/content/Context;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Ly2/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;

    invoke-direct {v0}, Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;->INSTANCE:Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/appedit/AppCustomizerManager$registerReceiver$1;->invoke(Ljava/lang/String;Ljava/lang/String;IZ)V

    sget-object p0, Ly2/p;->a:Ly2/p;

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5

    const-string p0, "$noName_0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "$noName_1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
