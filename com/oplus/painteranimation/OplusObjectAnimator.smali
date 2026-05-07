.class public Lcom/oplus/painteranimation/OplusObjectAnimator;
.super Landroid/animation/ValueAnimator;
.source ""

# interfaces
.implements Lcom/oplus/painteranimation/VeriableModeInterface;


# instance fields
.field private mAnimation:Landroid/animation/ObjectAnimator;

.field private mInitialized:Z

.field private mNeedPaintAnim:Z

.field private mPropertyName:Ljava/lang/String;

.field private mSceneName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mNeedPaintAnim:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mInitialized:Z

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public constructor <init>(Landroid/animation/ObjectAnimator;)V
    .registers 3

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mNeedPaintAnim:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mInitialized:Z

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/util/Property;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mNeedPaintAnim:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mInitialized:Z

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mNeedPaintAnim:Z

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mInitialized:Z

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method public static getFrameDelay()J
    .registers 2

    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static varargs ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/Path;",
            ")",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Landroid/animation/ObjectAnimator;)V

    return-object v0
.end method

.method public static varargs ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TT;[F>;",
            "Landroid/animation/TypeEvaluator<",
            "TT;>;[TT;)",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofMultiFloat(Ljava/lang/Object;Ljava/lang/String;[[F)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiFloat(Ljava/lang/String;[[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "TT;[I>;",
            "Landroid/animation/TypeEvaluator<",
            "TT;>;[TT;)",
            "Landroid/animation/ObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofMultiInt(Ljava/lang/Object;Ljava/lang/String;[[I)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    invoke-static {p1, p2}, Landroid/animation/PropertyValuesHolder;->ofMultiInt(Ljava/lang/String;[[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TP;>;",
            "Landroid/animation/TypeConverter<",
            "TV;TP;>;",
            "Landroid/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2, p3, p4}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4
    .param p1  # Landroid/util/Property;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/animation/TypeConverter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TV;>;",
            "Landroid/animation/TypeConverter<",
            "Landroid/graphics/PointF;",
            "TV;>;",
            "Landroid/graphics/Path;",
            ")",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/Property<",
            "TT;TV;>;",
            "Landroid/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/Property;)V

    iget-object p0, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4
    .param p2  # Landroid/animation/TypeConverter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Landroid/animation/TypeConverter<",
            "Landroid/graphics/PointF;",
            "*>;",
            "Landroid/graphics/Path;",
            ")",
            "Lcom/oplus/painteranimation/OplusObjectAnimator;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {p0, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 5

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>()V

    iget-object v1, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    iget-object p0, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setFrameDelay(J)V
    .registers 2

    invoke-static {p0, p1}, Landroid/animation/ValueAnimator;->setFrameDelay(J)V

    return-void
.end method

.method private tryPaintAnimator()V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mNeedPaintAnim:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mInitialized:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mNeedPaintAnim:Z

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-static {v0, v1, p0}, Lcom/oplus/painteranimation/SimulationInteractor;->tryPaintAnimation(Ljava/lang/String;Ljava/lang/String;Landroid/animation/ValueAnimator;)Z

    :cond_14
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public cancel()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Landroid/animation/Animator;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;->clone()Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Landroid/animation/ValueAnimator;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;->clone()Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 2

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>()V

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;->clone()Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public cloneWithPaintingName()Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 3

    new-instance v0, Lcom/oplus/painteranimation/OplusObjectAnimator;

    invoke-direct {v0}, Lcom/oplus/painteranimation/OplusObjectAnimator;-><init>()V

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;->setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public end()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    return-void
.end method

.method public getAnimatedFraction()F
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result p0

    return p0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPlayTime()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInternalAnim()Landroid/animation/ObjectAnimator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0
.end method

.method public getListeners()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPaintingPropertyName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-object p0
.end method

.method public getPaintingSceneName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getPropertyName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatCount()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getStartDelay()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getStartDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTarget()Ljava/lang/Object;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getTotalDuration()J
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getTotalDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getValues()[Landroid/animation/PropertyValuesHolder;
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    return-object p0
.end method

.method public isPaused()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isPaused()Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->pause()V

    return-void
.end method

.method public removeAllListeners()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    return-void
.end method

.method public removeListener(Landroid/animation/Animator$AnimatorListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->removePauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resume()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->resume()V

    return-void
.end method

.method public reverse()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->reverse()V

    return-void
.end method

.method public setAutoCancel(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    return-void
.end method

.method public setCurrentFraction(F)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->setDuration(J)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/ValueAnimator;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/painteranimation/OplusObjectAnimator;->setDuration(J)Lcom/oplus/painteranimation/OplusObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public setDuration(J)Lcom/oplus/painteranimation/OplusObjectAnimator;
    .registers 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    return-void
.end method

.method public varargs setIntValues([I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mInitialized:Z

    invoke-direct {p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;->tryPaintAnimator()V

    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    return-void
.end method

.method public setPaintingPropertyName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-void
.end method

.method public setPaintingSceneName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    return-void
.end method

.method public setProperty(Landroid/util/Property;)V
    .registers 2
    .param p1  # Landroid/util/Property;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    return-void
.end method

.method public setStartDelay(J)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    return-void
.end method

.method public setUniquePaintingName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mNeedPaintAnim:Z

    invoke-direct {p0}, Lcom/oplus/painteranimation/OplusObjectAnimator;->tryPaintAnimator()V

    return-void
.end method

.method public varargs setValues([Landroid/animation/PropertyValuesHolder;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method

.method public setupEndValues()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->setupEndValues()V

    return-void
.end method

.method public setupStartValues()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    return-void
.end method

.method public start()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OplusObjectAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", internal anim :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; scene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mSceneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; property = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/painteranimation/OplusObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
