.class public Lcom/android/launcher3/anim/SpringProperty;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

.field public static final FLAG_CAN_SPRING_ON_END:I = 0x1

.field public static final FLAG_CAN_SPRING_ON_START:I = 0x2


# instance fields
.field public final flags:I

.field public mDampingRatio:F

.field public mStiffness:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/SpringProperty;

    invoke-direct {v0}, Lcom/android/launcher3/anim/SpringProperty;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/SpringProperty;->DEFAULT:Lcom/android/launcher3/anim/SpringProperty;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f000000  # 0.5f

    iput v0, p0, Lcom/android/launcher3/anim/SpringProperty;->mDampingRatio:F

    const v0, 0x44bb8000  # 1500.0f

    iput v0, p0, Lcom/android/launcher3/anim/SpringProperty;->mStiffness:F

    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->flags:I

    return-void
.end method


# virtual methods
.method public setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->mDampingRatio:F

    return-object p0
.end method

.method public setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;
    .registers 2

    iput p1, p0, Lcom/android/launcher3/anim/SpringProperty;->mStiffness:F

    return-object p0
.end method
