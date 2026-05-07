.class public final synthetic Lcom/android/wm/shell/pip/phone/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/x;->a:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/x;->a:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    check-cast p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    check-cast p4, Ljava/lang/Boolean;

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-static/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;->b(Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)Ly2/p;

    move-result-object p0

    return-object p0
.end method
