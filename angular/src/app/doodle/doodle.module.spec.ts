import { DoodleModule } from './doodle.module';

describe('DoodleModule', () => {
  let doodleModule: DoodleModule;

  beforeEach(() => {
    doodleModule = new DoodleModule();
  });

  it('should create an instance', () => {
    expect(doodleModule).toBeTruthy();
  });
});
